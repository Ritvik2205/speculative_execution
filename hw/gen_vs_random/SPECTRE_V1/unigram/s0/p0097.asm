.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
not rdx
cmp cl, al
bts ax, dx
test rax, -1638758413
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 75
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
add dl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
and dl, -109
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and dx, 16
sub cl, -47
lea cx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
