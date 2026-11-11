.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
cmovp ecx, eax
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
and rax, -636362975
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
test dil, al
and dl, 61 # instrumentation
cmovl cx, dx
and rdx, 26
cmovnz rsi, rax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 38
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
or esi, -110
bts di, bx
and al, -68 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
and bl, 68
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
cmovnb eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
