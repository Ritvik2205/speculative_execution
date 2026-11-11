.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 35
movzx ecx, al
setnl dl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 13
add al, 110 # instrumentation
movsx si, al
test sil, 24
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and dl, 60 # instrumentation
cmovno esi, esi
lea rdx, qword ptr [rcx + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
