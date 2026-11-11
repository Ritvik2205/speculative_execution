.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 22
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
or esi, edi
and dl, -103 # instrumentation
cmovbe dx, dx
and dl, 16 # instrumentation
cmovle edi, edi
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 76
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and al, -103
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor dil, -3
or sil, -49
bts eax, 222
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
