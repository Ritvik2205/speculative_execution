.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
and rbx, 65
or dil, bl
and al, al
and sil, 101 # instrumentation
cmovno eax, esi
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
and dl, -1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 67
btr si, 208
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
xor esi, edi
bt rdi, rdi
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
