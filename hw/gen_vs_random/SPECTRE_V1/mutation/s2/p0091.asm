.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 73 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor al, -41
test edx, 1380346728
setnl cl
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
xor bl, bl
mov ax, bx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 44
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
cmovp ax, di
and bl, 46
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
add dl, 63 # instrumentation
cmovl dx, di
sbb ecx, -1
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
xor cl, -103
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
