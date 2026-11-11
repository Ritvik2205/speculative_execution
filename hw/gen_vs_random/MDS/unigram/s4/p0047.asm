.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
test edx, -372470678
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
or dl, sil
or cl, 7
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
btr ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and bl, 53 # instrumentation
cmovnl rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
