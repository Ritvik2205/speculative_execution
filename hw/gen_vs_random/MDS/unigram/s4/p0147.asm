.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdx]
cmovnz rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
cmovnb bx, dx
or sil, cl
btr cx, cx
btr bx, ax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
bt esi, edx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
or cx, di
test dl, -119
or dil, 12
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
