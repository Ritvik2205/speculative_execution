.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, 52
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and bl, 124
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
setnb bl
cmp al, cl
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
bt rdx, 46
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
