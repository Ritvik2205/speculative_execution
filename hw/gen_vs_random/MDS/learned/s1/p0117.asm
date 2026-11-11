.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
test eax, -409834435
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
xor al, cl
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
test al, -81
test dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
