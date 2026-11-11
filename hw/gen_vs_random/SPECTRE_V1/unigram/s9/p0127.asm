.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
test si, 92
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rbx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
btc ebx, 218
add al, -62 # instrumentation
setnb sil
cmovbe dx, ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
or cx, 41
setl dil
test rcx, -1420345926
adc sil, cl
mul rcx
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
