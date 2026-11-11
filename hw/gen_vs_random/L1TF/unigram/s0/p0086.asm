.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 30
add bl, 76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
adc dl, al
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 45
test edi, 82
and edx, 84
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
sub eax, -911655926
or edi, esi
sub cl, 32
add cl, 59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
