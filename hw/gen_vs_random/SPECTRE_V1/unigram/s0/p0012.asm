.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
add cl, -51 # instrumentation
cmovl ecx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
sbb dil, -106
add dil, 72
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
cmovs rbx, rbx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
lea cx, qword ptr [rbx + rax]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and dl, dl
xchg sil, sil
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
