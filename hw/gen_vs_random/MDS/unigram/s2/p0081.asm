.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
or ecx, 87
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
or cl, bl
test sil, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 53
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
test ebx, -2015966884
test rax, -359674714
and ecx, -104
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], di
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
bts ebx, 205
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
bts rbx, 56
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
