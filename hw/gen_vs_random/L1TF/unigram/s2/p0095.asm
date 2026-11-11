.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
lea rdx, qword ptr [rcx + rdi + 10]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
sub sil, -99
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
add bl, -79 # instrumentation
cmovo bx, dx
cmovns rdx, rax
or cl, dil
test edx, eax
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
and dil, -82
or dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
