.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 126 # instrumentation
setnb al
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
cmovnbe edx, ecx
cmp eax, 123533400
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
setb al
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
bt cx, 90
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
sub sil, -99
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 45
add dil, -49 # instrumentation
adc dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
