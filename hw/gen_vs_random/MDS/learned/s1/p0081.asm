.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
or rax, -2043376621
btc rbx, rax
xor al, cl
and dl, -33 # instrumentation
cmovns rsi, rsi
or rax, -285849275
bt si, dx
lea edi, qword ptr [rcx + rax]
jmp .bb_0.1
.bb_0.1:
or bx, cx
and cl, 40
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
not al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and dl, -7
inc rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
