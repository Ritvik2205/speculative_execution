.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 93
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
btr dx, ax
cmovle si, cx
and bl, -62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
or al, 25
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
bts rbx, 56
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 83
cmovno rsi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
