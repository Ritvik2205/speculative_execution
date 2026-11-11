.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 92
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
test al, 70
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
btr rsi, rdi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 36
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
setnz dil
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
