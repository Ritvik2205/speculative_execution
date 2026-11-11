.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, -101
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
setns dl
cmovnle rax, rax
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
mul rdi
xchg si, ax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
movsx dx, cl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
xor rax, 1636804787
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
