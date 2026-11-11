.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
lea rdi, qword ptr [rdi]
cmovnbe rdi, rcx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
add dil, 12 # instrumentation
lea rcx, qword ptr [rdx + rdi]
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
test eax, 645518295
or cl, sil
jmp .bb_0.1
.bb_0.1:
xor dx, 68
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and sil, al
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
