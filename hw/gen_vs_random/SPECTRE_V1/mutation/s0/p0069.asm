.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -62 # instrumentation
setnb dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and ax, 2806
or di, di
or dl, bl
add al, -47
or cl, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
neg cl
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
setnb cl
bt bx, bx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor ecx, ebx
cmp ax, cx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
add dl, dil
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
cmovnl rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
inc rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
