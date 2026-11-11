.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
and dl, 101 # instrumentation
cmovno edi, edx
cmovb esi, ecx
cmovb ebx, eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
btr eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
btr edi, edx
btr cx, ax
and dil, -62
test al, dil
and cl, -85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rbx
bts edi, edi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and dl, 91 # instrumentation
cmovnle edx, edx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or bl, dl
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
