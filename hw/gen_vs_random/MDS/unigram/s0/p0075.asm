.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
not al
bt rsi, 70
cmovs rdx, rbx
cmovnl si, ax
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
btr rdx, rdx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
xor cl, 93
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
cmovp ax, ax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
cmovno ecx, edi
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 77
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
