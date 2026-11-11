.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 99
not rcx
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
cmovle ax, cx
or bl, -52
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and dl, dil
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
and cl, dl
cmovnp rdi, rax
bts rsi, rdi
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
or bl, 13
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
cmovnb rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
