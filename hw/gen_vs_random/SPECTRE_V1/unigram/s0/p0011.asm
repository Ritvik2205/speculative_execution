.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, dl
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 86
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 90
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], bl
sub eax, -518999763
add dl, -124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
setno cl
add bx, -105
cmovp ecx, esi
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
dec rax
or cl, cl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
