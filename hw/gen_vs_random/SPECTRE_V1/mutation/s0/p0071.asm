.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
add dl, 73 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -41
test edx, 1380346728
and bl, -121
cmovp ax, di
xor bl, bl
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
setnl cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
mov ax, bx
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
