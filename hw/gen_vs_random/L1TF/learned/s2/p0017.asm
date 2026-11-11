.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, -20370
sbb dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
dec edi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
cmovnl ebx, esi
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
cmovno cx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 93
imul bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
bt rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
adc dx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
