.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 68
cmp dx, 4
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
or sil, al
and bl, 89
sbb rsi, 70
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
or dx, 55
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
add al, 121 # instrumentation
setnb cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 67
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
