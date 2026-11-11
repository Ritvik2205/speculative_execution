.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 51
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
test bl, dl
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and bl, bl
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 53
test di, si
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
cmovnl ax, dx
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and sil, -9
and ax, 5001
or al, dil
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
