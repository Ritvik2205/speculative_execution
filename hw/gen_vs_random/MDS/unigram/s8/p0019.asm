.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 57
or dl, cl
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
or bl, -52
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and dl, -14 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -33
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and al, al
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
or ebx, -15
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 60
and cl, -15 # instrumentation
cmovnp cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
