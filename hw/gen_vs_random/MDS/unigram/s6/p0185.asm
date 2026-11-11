.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, 47
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
cmovnz cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and cl, -48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdi
cmovnbe di, ax
test bl, sil
bts si, 205
cmovnb eax, esi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
or dl, 85
bts rcx, 84
test bl, bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
cmovnb ax, dx
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
btr edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
