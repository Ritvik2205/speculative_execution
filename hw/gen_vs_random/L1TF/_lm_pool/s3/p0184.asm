.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
bts edi, ebx
xor bl, dil
xor dil, -42
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
xor rdi, rcx
test bl, sil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
