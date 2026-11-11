.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rsi
add al, 51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
inc edx
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
sub eax, -911655926
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
test ebx, 21
mov dil, cl
add dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
