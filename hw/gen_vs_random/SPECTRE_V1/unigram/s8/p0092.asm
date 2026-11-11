.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
lea rcx, qword ptr [rax + rsi + 43]
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
movsx rdi, ax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cwd
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 70
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
not edi
bt ecx, 204
setnb dl
dec dl
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 7
add bl, al
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
