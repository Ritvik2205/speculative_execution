.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
test rcx, rsi
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
add al, -46
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
cmovns ecx, eax
setnle dl
jmp .bb_0.1
.bb_0.1:
neg dl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 52
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
xor dil, bl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
add al, 48 # instrumentation
cmovnz edx, edx
cmp rax, 16650668
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
setno bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
