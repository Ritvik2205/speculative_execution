.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rdi, rsi
and al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
test dil, -80
btc cx, ax
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
and sil, al
and sil, 74
and al, 20 # instrumentation
cmovp cx, dx
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
cmovl rax, rsi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 40
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
or dl, dl
btr esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
