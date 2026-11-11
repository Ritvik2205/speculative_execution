.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovle cx, di
or edi, -88
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
cmovp di, cx
xor sil, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
cmovns rsi, rcx
cmovns ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
or si, 0b1000000000000000 # instrumentation
bsr di, si
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 92
and rdx, rdx
btr bx, 100
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 71
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and dl, -41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
