.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 76
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
cmovbe di, ax
xor dil, sil
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
test bl, -14
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and bl, dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
btr esi, eax
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
or ax, 30524
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
