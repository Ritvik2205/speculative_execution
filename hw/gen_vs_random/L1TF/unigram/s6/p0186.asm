.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
lea di, qword ptr [rcx + rdx + 94]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rax, 1994547909
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
cmp dl, -93
setnb dil
sub al, -97
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 73
xor edx, 48
cmovo rax, rax
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
