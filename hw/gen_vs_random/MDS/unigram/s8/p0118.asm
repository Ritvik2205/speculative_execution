.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 59
and dil, 53 # instrumentation
cmovnl rdi, rdi
and ax, 19740
and cl, 123 # instrumentation
cmovo cx, dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], edx
and bl, 66 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and edx, edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
cmovs rsi, rcx
cmovnb rcx, rdi
test ebx, -961564216
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
test al, dl
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 48
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
