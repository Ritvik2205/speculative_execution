.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, bl
test rsi, 43
add dil, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
xor rdi, rdi
inc dil
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmovp eax, ebx
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
add al, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
setp bl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
add bl, bl
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
