.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 34
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 88
cmovnp rbx, rbx
test di, ax
and dl, 16 # instrumentation
cmovle ecx, ecx
cmovno rax, rax
btc rbx, rcx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
xor cx, -18
or dl, -8
test al, 91
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
or dx, 125
and rdx, 64
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 23
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
not rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
