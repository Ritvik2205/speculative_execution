.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, al
and bl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
or rsi, 50
test dil, -80
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
and dl, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and ebx, 7
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and cl, 61 # instrumentation
cmovl ax, cx
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
or dx, dx
or bl, -62
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 68
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], ax
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
