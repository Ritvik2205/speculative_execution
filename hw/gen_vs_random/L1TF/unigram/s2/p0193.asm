.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -98 # instrumentation
setp cl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
lea rbx, qword ptr [rcx + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
add edi, eax
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
bt rcx, 38
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
lea rdi, qword ptr [rsi + rsi]
or di, 0b1000000000000000 # instrumentation
bsf dx, di
btc dx, si
add dl, -23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
