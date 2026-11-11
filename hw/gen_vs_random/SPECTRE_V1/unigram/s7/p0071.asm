.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
setnb bl
neg al
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
mul dl
add dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
add dl, -86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
btr cx, si
test dl, -105
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rsi]
or bx, bx
mov edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
