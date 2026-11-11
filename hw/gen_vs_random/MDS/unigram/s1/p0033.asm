.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 359647041
btc rdx, 92
test si, 90
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and bl, -56 # instrumentation
cmovnle edx, eax
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and sil, 38 # instrumentation
cmovbe edi, esi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
bt ax, 76
test rdi, 5
and bl, -28 # instrumentation
cmovl rcx, rdx
or al, -61
xor bl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
