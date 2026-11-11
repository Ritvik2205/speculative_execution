.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 67
and rdx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
cmovnl rax, rdi
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
neg rbx
imul edi, ecx
dec dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
sub eax, edx
cmp dl, al
setnl al
add al, bl
sbb dl, dl
add dl, 35 # instrumentation
cmovnz rbx, rax
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
