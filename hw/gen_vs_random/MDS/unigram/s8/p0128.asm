.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 67 # instrumentation
cmovl rsi, rbx
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 91
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and cl, -23 # instrumentation
cmovno edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
cmovb rdx, rdi
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
or eax, 1725503461
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and al, -38 # instrumentation
cmovnb si, si
xor cl, -13
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
and bl, 68
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
test sil, 41
or rax, -141551502
btr rax, 209
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
