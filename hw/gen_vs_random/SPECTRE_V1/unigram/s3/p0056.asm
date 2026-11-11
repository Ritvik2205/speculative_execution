.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx dx, dl
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 75
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 16
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 11
add dl, 63 # instrumentation
cmovle si, bx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 59
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 99
lea ax, qword ptr [rbx + rbx + 3]
movsx esi, sil
add cl, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
