.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdx, 100
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
btr edx, 255
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 48
xor cl, 83
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
cmovz rbx, rbx
or di, 84
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 34
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rbx]
xor al, dl
cmovnz ebx, edx
cmovnp ebx, esi
test ebx, -2015966884
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 57
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
