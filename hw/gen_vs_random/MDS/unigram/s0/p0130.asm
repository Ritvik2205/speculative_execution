.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
or bl, cl
or dl, -89
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
or al, al
or al, -58
cmovbe ebx, ebx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
xor rcx, rax
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
cmovle rdx, rsi
and cl, 51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
and al, 54 # instrumentation
cmovnp si, si
xor sil, -126
bts rdx, rcx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
