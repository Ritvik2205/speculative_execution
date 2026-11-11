.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and dl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
not eax
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
and eax, 366961170
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 71
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
or al, cl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 43
cmovl ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
jmp .bb_0.1
.bb_0.1:
test bl, sil
and al, -23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
