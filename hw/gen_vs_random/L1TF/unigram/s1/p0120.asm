.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdi, 80
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdx
add dl, -123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
sub cx, di
cmp cl, dil
or dl, bl
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
cmp cx, 61
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 75
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
cmovnb ebx, eax
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
