.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
lea cx, qword ptr [rcx + rbx]
lea bx, qword ptr [rcx + rbx + 2101]
and al, sil
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 99
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 87
lea cx, qword ptr [rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
cmovbe ebx, eax
movsx rax, dx
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
