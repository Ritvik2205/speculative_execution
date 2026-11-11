.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 54
setns al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmovle rdx, rdx
cmp al, 56
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -29
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 63
cmp dx, 60
setb bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
setnb al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
