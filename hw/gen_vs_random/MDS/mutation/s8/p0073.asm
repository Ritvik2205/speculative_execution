.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
cmovo rbx, rdi
and ax, 19740
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
cmovo eax, ebx
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and bl, bl
btr rsi, 207
jmp .bb_0.1
.bb_0.1:
and al, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
cmovno rcx, rdx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
cmovnb rdx, rcx
or dl, 51
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
or cl, al
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rsi]
bt rax, rdi
or eax, -1777347252
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
