.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdx]
not al
sub al, 26
and rsi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 1
add dl, -1
lea esi, qword ptr [rdi + rdi + 17]
xor bl, cl
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
