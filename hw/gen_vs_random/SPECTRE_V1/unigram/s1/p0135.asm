.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, cl
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
lea rcx, qword ptr [rcx + rax]
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
xor sil, sil
xor dil, dl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 42
or ax, 18658
jno .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnp cx, dx
and sil, dil
add ecx, 100
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
add dl, 47
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
sbb dx, 94
cmovp bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
