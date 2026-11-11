.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, rbx
test dl, -85
and al, 50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and dx, 3
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 66
or si, -12
and di, di
not cl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and cl, 21 # instrumentation
cmovb bx, cx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
and dl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
and dl, 81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
btr si, 208
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
