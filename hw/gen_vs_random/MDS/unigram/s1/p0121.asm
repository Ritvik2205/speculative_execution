.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
cmovnl eax, edx
bts rsi, 221
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 50
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
or cl, al
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
not edx
test edx, -1561252782
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and sil, al
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
