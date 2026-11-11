.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 50
mov cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
lea rbx, qword ptr [rax + rbx + 28]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], esi
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
sub rax, rcx
lea edx, qword ptr [rbx + rax + 89]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
inc cx
setnle cl
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 14
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
lea eax, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
