.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], esi
sub cl, -21
movsx cx, dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea esi, qword ptr [rax]
or bl, dl
sbb al, sil
cmovle bx, ax
imul al
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
test bl, al
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
